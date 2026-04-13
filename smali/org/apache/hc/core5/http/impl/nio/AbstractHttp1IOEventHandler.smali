.class Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/impl/nio/HttpConnectionEventHandler;


# instance fields
.field final streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Stream multiplexer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public connected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onConnect()V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method public disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onDisconnect()V

    return-void
.end method

.method public exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method public getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onInput(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->isOpen()Z

    move-result v0

    return v0
.end method

.method public outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onOutput()V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1IOEventHandler;->streamDuplexer:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onException(Ljava/lang/Exception;)V

    return-void
.end method
