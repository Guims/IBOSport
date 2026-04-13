.class public Lorg/apache/hc/client5/http/config/TlsConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/config/TlsConfig$Builder;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/hc/client5/http/config/TlsConfig;


# instance fields
.field private final handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final httpVersionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

.field private final supportedCipherSuites:[Ljava/lang/String;

.field private final supportedProtocols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->build()Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/config/TlsConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/TlsConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lorg/apache/hc/client5/http/config/TlsConfig;-><init>(Lorg/apache/hc/core5/util/Timeout;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/hc/core5/http2/HttpVersionPolicy;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/util/Timeout;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/hc/core5/http2/HttpVersionPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p2, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->supportedProtocols:[Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->supportedCipherSuites:[Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->httpVersionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-void
.end method

.method public static copy(Lorg/apache/hc/client5/http/config/TlsConfig;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/TlsConfig;->getHandshakeTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->setHandshakeTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/TlsConfig;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->setSupportedProtocols([Ljava/lang/String;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/TlsConfig;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->setSupportedCipherSuites([Ljava/lang/String;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/TlsConfig;->getHttpVersionPolicy()Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->setVersionPolicy(Lorg/apache/hc/core5/http2/HttpVersionPolicy;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lorg/apache/hc/client5/http/config/TlsConfig$Builder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/TlsConfig;->clone()Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/config/TlsConfig;

    return-object v0
.end method

.method public getHandshakeTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public getHttpVersionPolicy()Lorg/apache/hc/core5/http2/HttpVersionPolicy;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->httpVersionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->supportedProtocols:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[handshakeTimeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedProtocols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->supportedProtocols:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedCipherSuites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->supportedCipherSuites:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", httpVersionPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/TlsConfig;->httpVersionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
