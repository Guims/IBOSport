.class public Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;
.super Ljava/lang/Object;


# instance fields
.field private ciphers:[Ljava/lang/String;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private sslBufferMode:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private systemProperties:Z

.field private tlsDetailsFactory:Lorg/apache/hc/core5/function/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Factory<",
            "Ljavax/net/ssl/SSLEngine;",
            "Lorg/apache/hc/core5/reactor/ssl/TlsDetails;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;
    .locals 8

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->systemProperties:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/hc/core5/ssl/SSLContexts;->createSystemDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/hc/core5/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->tlsVersions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_2
    move-object v3, v0

    goto :goto_3

    :cond_2
    iget-boolean v0, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->systemProperties:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getSystemProtocols()[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->ciphers:[Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    iget-boolean v0, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->systemProperties:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getSystemCipherSuits()[Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v4, v1

    :goto_4
    new-instance v1, Lorg/apache/hc/client5/http/ssl/DefaultClientTlsStrategy;

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->sslBufferMode:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    if-eqz v0, :cond_6

    :goto_5
    move-object v5, v0

    goto :goto_6

    :cond_6
    sget-object v0, Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;->STATIC:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    goto :goto_5

    :goto_6
    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_7

    :goto_7
    move-object v6, v0

    goto :goto_8

    :cond_7
    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    goto :goto_7

    :goto_8
    iget-object v7, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->tlsDetailsFactory:Lorg/apache/hc/core5/function/Factory;

    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/client5/http/ssl/DefaultClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Ljavax/net/ssl/HostnameVerifier;Lorg/apache/hc/core5/function/Factory;)V

    return-object v1
.end method

.method public final varargs setCiphers([Ljava/lang/String;)Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->ciphers:[Ljava/lang/String;

    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public setSslBufferMode(Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;)Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->sslBufferMode:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    return-object p0
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public setTlsDetailsFactory(Lorg/apache/hc/core5/function/Factory;)Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Factory<",
            "Ljavax/net/ssl/SSLEngine;",
            "Lorg/apache/hc/core5/reactor/ssl/TlsDetails;",
            ">;)",
            "Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->tlsDetailsFactory:Lorg/apache/hc/core5/function/Factory;

    return-object p0
.end method

.method public final varargs setTlsVersions([Ljava/lang/String;)Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->tlsVersions:[Ljava/lang/String;

    return-object p0
.end method

.method public final varargs setTlsVersions([Lorg/apache/hc/core5/http/ssl/TLS;)Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->tlsVersions:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->tlsVersions:[Ljava/lang/String;

    aget-object v2, p1, v0

    iget-object v2, v2, Lorg/apache/hc/core5/http/ssl/TLS;->id:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final useSystemProperties()Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/ssl/ClientTlsStrategyBuilder;->systemProperties:Z

    return-object p0
.end method
