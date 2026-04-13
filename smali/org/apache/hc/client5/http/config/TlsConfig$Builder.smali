.class public Lorg/apache/hc/client5/http/config/TlsConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/config/TlsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private supportedCipherSuites:[Ljava/lang/String;

.field private supportedProtocols:[Ljava/lang/String;

.field private versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 5

    new-instance v0, Lorg/apache/hc/client5/http/config/TlsConfig;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    iget-object v2, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->supportedProtocols:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->supportedCipherSuites:[Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/hc/client5/http/config/TlsConfig;-><init>(Lorg/apache/hc/core5/util/Timeout;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/hc/core5/http2/HttpVersionPolicy;)V

    return-object v0
.end method

.method public setHandshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setHandshakeTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public varargs setSupportedCipherSuites([Ljava/lang/String;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->supportedCipherSuites:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs setSupportedProtocols([Ljava/lang/String;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->supportedProtocols:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs setSupportedProtocols([Lorg/apache/hc/core5/http/ssl/TLS;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->supportedProtocols:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->supportedProtocols:[Ljava/lang/String;

    iget-object v1, v1, Lorg/apache/hc/core5/http/ssl/TLS;->id:Ljava/lang/String;

    aput-object v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setVersionPolicy(Lorg/apache/hc/core5/http2/HttpVersionPolicy;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-object p0
.end method
