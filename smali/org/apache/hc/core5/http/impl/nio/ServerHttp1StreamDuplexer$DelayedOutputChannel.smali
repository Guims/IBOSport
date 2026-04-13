.class Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayedOutputChannel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel<",
        "Lorg/apache/hc/core5/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private volatile completed:Z

.field private volatile delayedResponse:Lorg/apache/hc/core5/http/HttpResponse;

.field private volatile direct:Z


# direct methods
.method private constructor <init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;-><init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;)V

    return-void
.end method


# virtual methods
.method public abortGracefully()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->direct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->abortGracefully()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->completed:Z

    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activate()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->direct:Z

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->delayedResponse:Lorg/apache/hc/core5/http/HttpResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->delayedResponse:Lorg/apache/hc/core5/http/HttpResponse;

    iget-boolean v2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->completed:Z

    iget-boolean v3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->completed:Z

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->IMMEDIATE:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v3, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->BUFFER:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->submit(Lorg/apache/hc/core5/http/HttpMessage;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->delayedResponse:Lorg/apache/hc/core5/http/HttpResponse;

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->close()V

    return-void
.end method

.method public complete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->direct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/ContentEncoder;->complete(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->completed:Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->direct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ContentEncoder;->isCompleted()Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->completed:Z

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestOutput()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->requestOutput()V

    return-void
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public bridge synthetic submit(Lorg/apache/hc/core5/http/HttpMessage;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpResponse;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->submit(Lorg/apache/hc/core5/http/HttpResponse;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V

    return-void
.end method

.method public submit(Lorg/apache/hc/core5/http/HttpResponse;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->direct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->submit(Lorg/apache/hc/core5/http/HttpMessage;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->delayedResponse:Lorg/apache/hc/core5/http/HttpResponse;

    iput-boolean p2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->completed:Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public suspendOutput()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->suspendOutput()V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->direct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;->channel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/ContentEncoder;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
