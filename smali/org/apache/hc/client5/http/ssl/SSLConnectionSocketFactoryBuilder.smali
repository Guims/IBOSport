.class public Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;
.super Ljava/lang/Object;


# instance fields
.field private ciphers:[Ljava/lang/String;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private systemProperties:Z

.field private tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->systemProperties:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/hc/core5/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->tlsVersions:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->systemProperties:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getSystemProtocols()[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iget-object v3, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->ciphers:[Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean v3, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->systemProperties:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getSystemCipherSuits()[Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object v3, v2

    :goto_2
    new-instance v2, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;

    iget-object v4, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    :goto_3
    invoke-direct {v2, v0, v1, v3, v4}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    return-object v2
.end method

.method public final varargs setCiphers([Ljava/lang/String;)Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->ciphers:[Ljava/lang/String;

    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public final varargs setTlsVersions([Ljava/lang/String;)Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->tlsVersions:[Ljava/lang/String;

    return-object p0
.end method

.method public final varargs setTlsVersions([Lorg/apache/hc/core5/http/ssl/TLS;)Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->tlsVersions:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->tlsVersions:[Ljava/lang/String;

    aget-object v2, p1, v0

    iget-object v2, v2, Lorg/apache/hc/core5/http/ssl/TLS;->id:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final useSystemProperties()Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactoryBuilder;->systemProperties:Z

    return-object p0
.end method
