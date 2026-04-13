.class Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "H2Stream"
.end annotation


# instance fields
.field private final channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

.field private final handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

.field private final remoteInitiated:Z


# direct methods
.method private constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    iput-boolean p3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->remoteInitiated:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;ZLorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;Z)V

    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->cancel()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    new-instance v2, Lorg/apache/hc/core5/http/RequestNotExecutedException;

    invoke-direct {v2}, Lorg/apache/hc/core5/http/RequestNotExecutedException;-><init>()V

    invoke-interface {v1, v2}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->failed(Ljava/lang/Exception;)V

    return v0
.end method

.method public appendState(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "channel=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->appendState(Ljava/lang/StringBuilder;)V

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public cancel()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/RequestNotExecutedException;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/RequestNotExecutedException;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->reset(Ljava/lang/Exception;)V

    return-void
.end method

.method public consumeData(Ljava/nio/ByteBuffer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->isRemoteClosed()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->consumeData(Ljava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/hc/core5/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;Lorg/apache/hc/core5/http2/H2Error;)V

    goto :goto_2

    :goto_1
    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;Lorg/apache/hc/core5/http2/H2Error;)V

    :goto_2
    return-void
.end method

.method public consumeHeader(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->isRemoteClosed()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->consumeHeader(Ljava/util/List;Z)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;Lorg/apache/hc/core5/http2/H2Error;)V

    return-void
.end method

.method public consumePromise(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->consumePromise(Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->setLocalEndStream()V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;Lorg/apache/hc/core5/http2/H2Error;)V

    return-void
.end method

.method public getId()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->getId()I

    move-result v0

    return v0
.end method

.method public getInputWindow()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->getInputWindow()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public getOutputWindow()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->getOutputWindow()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPushHandlerFactory()Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->getPushHandlerFactory()Lorg/apache/hc/core5/http/nio/HandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lorg/apache/hc/core5/http/HttpException;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->isRemoteClosed()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->handle(Lorg/apache/hc/core5/http/HttpException;Z)V

    return-void
.end method

.method public isLocalClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->isLocalClosed()Z

    move-result v0

    return v0
.end method

.method public isLocalReset()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->isLocalReset()Z

    move-result v0

    return v0
.end method

.method public isOutputReady()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->isOutputReady()Z

    move-result v0

    return v0
.end method

.method public isRemoteClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->isRemoteClosed()Z

    move-result v0

    return v0
.end method

.method public isRemoteInitiated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->remoteInitiated:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->isLocalClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->isRemoteClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->isResetDeadline()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public localReset(Ljava/lang/Exception;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->localReset(I)Z

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public localReset(Ljava/lang/Exception;Lorg/apache/hc/core5/http2/H2Error;)V
    .locals 0

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/H2Error;->getCode()I

    move-result p2

    goto :goto_1

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;I)V

    return-void
.end method

.method public localReset(Lorg/apache/hc/core5/http2/H2StreamResetException;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/H2StreamResetException;->getCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;I)V

    return-void
.end method

.method public produceInputCapacityUpdate()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->updateInputCapacity()V

    return-void
.end method

.method public produceOutput()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->produceOutput()V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;Lorg/apache/hc/core5/http2/H2Error;)V

    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void
.end method

.method public reset(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->setRemoteEndStream()V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->setLocalEndStream()V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handler:Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public setRemoteEndStream()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->channel:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->setRemoteEndStream()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "["

    invoke-static {v0}, Lp/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->appendState(Ljava/lang/StringBuilder;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
