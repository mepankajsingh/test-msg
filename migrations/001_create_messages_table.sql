-- Create messages table
CREATE TABLE IF NOT EXISTS messages (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  content TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Insert some sample messages
INSERT INTO messages (content) VALUES 
  ('Welcome to our Supabase-powered application!'),
  ('This message is fetched from Supabase database.'),
  ('You can add more messages through the Supabase dashboard.');
