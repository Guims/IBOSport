.class Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/reactor/ssl/SSLMode;Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

.field final synthetic val$handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

.field final synthetic val$session:Lorg/apache/hc/core5/reactor/IOSession;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->val$handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->val$session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->beginHandshake(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->val$session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V

    :cond_0
    return-void
.end method

.method public exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$900(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->val$session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {v1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$700(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;->COMPLETE:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->val$session:Lorg/apache/hc/core5/reactor/IOSession;

    sget-object v2, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {v1, v2}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    sget-object v2, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {v1, v2}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V
    .locals 0

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {p2}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$000(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)I

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {p2, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$100(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;Lorg/apache/hc/core5/reactor/IOSession;)V

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {p2, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$200(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;Lorg/apache/hc/core5/reactor/IOSession;)V

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$300(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)V

    return-void
.end method

.method public outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {v0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$400(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;Lorg/apache/hc/core5/reactor/IOSession;)V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$500(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)I

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {v0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$100(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;Lorg/apache/hc/core5/reactor/IOSession;)V

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$300(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)V

    return-void
.end method

.method public timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$600(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$600(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$700(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;->COMPLETE:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;

    if-eq v0, v1, :cond_1

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->val$handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-static {p2}, Lorg/apache/hc/core5/io/SocketTimeoutExceptionFactory;->create(Lorg/apache/hc/core5/util/Timeout;)Ljava/net/SocketTimeoutException;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;->this$0:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-static {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->access$800(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method
