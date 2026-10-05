-- ============ BACTERIA SMASH LEADERBOARD DATABASE ============
-- Run this SQL in your Supabase Project → SQL Editor

-- Create the scores table
CREATE TABLE scores (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name TEXT NOT NULL,
    score INTEGER NOT NULL CHECK (score >= 0 AND score <= 9999),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create an index on score for faster leaderboard queries
CREATE INDEX idx_scores_score_desc ON scores (score DESC, created_at ASC);

-- Enable Row Level Security
ALTER TABLE scores ENABLE ROW LEVEL SECURITY;

-- ============ ROW LEVEL SECURITY POLICIES ============

-- Policy 1: Allow SELECT (anyone can read the leaderboard)
CREATE POLICY "Enable read access for all users"
ON scores FOR SELECT
USING (true);

-- Policy 2: Allow INSERT (anyone can insert their score)
CREATE POLICY "Enable insert access for all users"
ON scores FOR INSERT
WITH CHECK (
    -- Score must be a reasonable value (0-9999)
    score >= 0 AND score <= 9999
    -- Name must not be empty and reasonable length
    AND name IS NOT NULL
    AND char_length(trim(name)) >= 1
    AND char_length(trim(name)) <= 20
);

-- Policy 3: Deny UPDATE (prevent score tampering)
CREATE POLICY "Deny updates to prevent cheating"
ON scores FOR UPDATE
USING (false);

-- Policy 4: Deny DELETE (prevent removing scores)
CREATE POLICY "Deny deletes to maintain integrity"
ON scores FOR DELETE
USING (false);

-- ============ OPTIONAL: Add helper function for maintenance ============
-- This function is for admin use only (run in Supabase directly if needed)

-- Get top 100 scores with rank
-- Run this in SQL Editor to test:
SELECT 
    ROW_NUMBER() OVER (ORDER BY score DESC, created_at ASC) as rank,
    name,
    score,
    created_at
FROM scores
ORDER BY score DESC, created_at ASC
LIMIT 100;

-- ============ NOTES ============
-- The table is set up with:
-- 1. Auto-incrementing ID
-- 2. Name (required, 1-20 chars, validated by RLS)
-- 3. Score (integer, 0-9999, validated by RLS)
-- 4. Timestamps (created_at for tie-breaking)
-- 5. Row Level Security that:
--    - Allows public READ access (leaderboard visibility)
--    - Allows public INSERT (score submission)
--    - BLOCKS UPDATE and DELETE (prevents cheating)
-- 6. Index on (score DESC, created_at ASC) for fast sorting
