.class public final Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
.super Ljava/lang/Object;


# instance fields
.field private final applicationProtocol:Ljava/lang/String;

.field private final sslSession:Ljavax/net/ssl/SSLSession;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->sslSession:Ljavax/net/ssl/SSLSession;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->applicationProtocol:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicationProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->applicationProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->sslSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TlsDetails{sslSession="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationProtocol=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->applicationProtocol:Ljava/lang/String;

    const-string v2, "\'}"

    invoke-static {v0, v1, v2}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
