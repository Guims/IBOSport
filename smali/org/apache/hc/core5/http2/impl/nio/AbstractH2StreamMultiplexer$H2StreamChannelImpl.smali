.class Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H2StreamChannelImpl"
.end annotation


# instance fields
.field private volatile deadline:J

.field private final id:I

.field private volatile idle:Z

.field private final inputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile localEndStream:Z

.field private final outputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile remoteEndStream:Z

.field final synthetic this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;IZII)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->id:I

    iput-boolean p3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->idle:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->inputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->outputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public appendState(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", connState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1700(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", inputWindow="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->inputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", outputWindow="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->outputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", localEndStream="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", idle="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->idle:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method public cancel()Z
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->CANCEL:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localReset(Lorg/apache/hc/core5/http2/H2Error;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public endStream()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->endStream(Ljava/util/List;)V

    return-void
.end method

.method public endStream(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    iget v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->id:I

    invoke-static {v1, v2, p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$300(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;ILjava/util/List;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1400(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http2/frame/FrameFactory;

    move-result-object p1

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->id:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createData(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1500(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;Lorg/apache/hc/core5/http2/frame/RawFrame;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->id:I

    return v0
.end method

.method public getInputWindow()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->inputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public getOutputWindow()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->outputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public isLocalClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z

    return v0
.end method

.method public isLocalReset()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoteClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->remoteEndStream:Z

    return v0
.end method

.method public isResetDeadline()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public localReset(I)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->deadline:J

    iget-boolean v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->idle:Z

    if-nez v2, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1400(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http2/frame/FrameFactory;

    move-result-object v1

    iget v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->id:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createResetStream(II)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v1, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1500(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;Lorg/apache/hc/core5/http2/frame/RawFrame;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public localReset(Lorg/apache/hc/core5/http2/H2Error;)Z
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/H2Error;->getCode()I

    move-result p1

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localReset(I)Z

    move-result p1

    return p1
.end method

.method public push(Ljava/util/List;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;",
            "Lorg/apache/hc/core5/http/nio/AsyncPushProducer;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->acceptPushRequest()V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$400(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)I

    move-result v3

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$500(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http2/config/H2Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result v5

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$600(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http2/config/H2Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result v6

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;IZII)V

    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->create()Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    move-result-object v9

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    const-string v2, "http.ssl-session"

    invoke-virtual {v9, v2, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v0

    const-string v2, "http.connection-endpoint"

    invoke-virtual {v9, v2, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$700(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v6

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$800(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    move-result-object v7

    move-object v8, p2

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;-><init>(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V

    new-instance p2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, v1, v4, v2, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;ZLorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$1;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$900(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->releaseResources()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->id:I

    invoke-static {p2, v0, v3, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1000(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;IILjava/util/List;)V

    iput-boolean v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->idle:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public requestOutput()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1600(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)V

    return-void
.end method

.method public setLocalEndStream()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z

    return-void
.end method

.method public setRemoteEndStream()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->remoteEndStream:Z

    return-void
.end method

.method public submit(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->idle:Z

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->id:I

    invoke-static {v0, v1, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$300(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;ILjava/util/List;Z)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v0, "Message headers are missing"

    invoke-direct {p1, p2, v0}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "["

    invoke-static {v0}, Lp/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->appendState(Ljava/lang/StringBuilder;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->remoteEndStream:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    const/4 v1, 0x0

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1100(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->id:I

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->inputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, v2, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    return-void
.end method

.method public bridge synthetic write(Ljava/nio/Buffer;)I
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localEndStream:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->id:I

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->outputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, v2, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$1300(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->this$0:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
