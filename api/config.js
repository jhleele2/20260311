// Vercel Serverless: Environment Variable 로 Supabase 설정 전달
// Vercel 대시보드에서 SUPABASE_URL, SUPABASE_ANON_KEY 설정 필요

module.exports = (req, res) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Cache-Control', 's-maxage=60, stale-while-revalidate');
  res.status(200).json({
    SUPABASE_URL: process.env.SUPABASE_URL || '',
    SUPABASE_ANON_KEY: process.env.SUPABASE_ANON_KEY || ''
  });
};
