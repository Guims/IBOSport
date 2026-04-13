.class Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ListenerEndpoint;


# instance fields
.field final address:Ljava/net/SocketAddress;

.field final attachment:Ljava/lang/Object;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final key:Ljava/nio/channels/SelectionKey;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectionKey;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->key:Ljava/nio/channels/SelectionKey;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->address:Ljava/net/SocketAddress;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->attachment:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_0
    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public getAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->address:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endpoint: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->address:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
