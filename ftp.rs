use ftp::FtpStream;
use ftp::openssl::ssl::{ SslContext, SslMethod };
fn main()   {
    let ftpHost = "";
    let ftpUser = "";
    let ftpPasswd = "";
    let ftpFile = "";

    let ftp_stream = FtpStream::connect(ftpHost).unwrap();
    let ctx = SslContext::builder(SslMethod::tls()).unwrap().build();
    let mut ftp_stream = ftp_stream.into_secure(ctx).unwrap();
    ftp_stream.login(ftpUser, ftpPasswd).unwrap();
    let remote_file = ftp_stream.simple_retr(ftpFile).unwrap();
    let _ = ftp_stream.quit();
}
