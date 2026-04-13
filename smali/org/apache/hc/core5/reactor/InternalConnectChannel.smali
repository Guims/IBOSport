.class final Lorg/apache/hc/core5/reactor/InternalConnectChannel;
.super Lorg/apache/hc/core5/reactor/InternalChannel;


# instance fields
.field private final creationTimeMillis:J

.field private final dataChannelFactory:Lorg/apache/hc/core5/reactor/InternalDataChannelFactory;

.field private final key:Ljava/nio/channels/SelectionKey;

.field private final sessionRequest:Lorg/apache/hc/core5/reactor/IOSessionRequest;

.field private final socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;Lorg/apache/hc/core5/reactor/IOSessionRequest;Lorg/apache/hc/core5/reactor/InternalDataChannelFactory;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/InternalChannel;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->key:Ljava/nio/channels/SelectionKey;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->sessionRequest:Lorg/apache/hc/core5/reactor/IOSessionRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->creationTimeMillis:J

    iput-object p4, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->dataChannelFactory:Lorg/apache/hc/core5/reactor/InternalDataChannelFactory;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-static {p1}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public getLastEventTime()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->creationTimeMillis:J

    return-wide v0
.end method

.method public getTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->sessionRequest:Lorg/apache/hc/core5/reactor/IOSessionRequest;

    iget-object v0, v0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->timeout:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->sessionRequest:Lorg/apache/hc/core5/reactor/IOSessionRequest;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onIOEvent(I)V
    .locals 5

    const/16 v0, 0x8

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/hc/core5/reactor/InternalChannel;->checkTimeout(J)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->dataChannelFactory:Lorg/apache/hc/core5/reactor/InternalDataChannelFactory;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->key:Ljava/nio/channels/SelectionKey;

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->sessionRequest:Lorg/apache/hc/core5/reactor/IOSessionRequest;

    iget-object v4, v3, Lorg/apache/hc/core5/reactor/IOSessionRequest;->remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iget-object v3, v3, Lorg/apache/hc/core5/reactor/IOSessionRequest;->attachment:Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v4, v3}, Lorg/apache/hc/core5/reactor/InternalDataChannelFactory;->create(Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/InternalDataChannel;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->sessionRequest:Lorg/apache/hc/core5/reactor/IOSessionRequest;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->completed(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)V

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/reactor/InternalChannel;->handleIOEvent(I)V

    :cond_1
    return-void
.end method

.method public onTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->sessionRequest:Lorg/apache/hc/core5/reactor/IOSessionRequest;

    invoke-static {p1}, Lorg/apache/hc/core5/io/SocketTimeoutExceptionFactory;->create(Lorg/apache/hc/core5/util/Timeout;)Ljava/net/SocketTimeoutException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->failed(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalConnectChannel;->sessionRequest:Lorg/apache/hc/core5/reactor/IOSessionRequest;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
