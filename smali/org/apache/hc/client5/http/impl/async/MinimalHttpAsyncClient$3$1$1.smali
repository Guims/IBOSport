.class Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;

.field final synthetic val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->this$2:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endStream()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->this$2:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->this$2:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->releaseAndReuse()V

    :cond_0
    return-void
.end method

.method public endStream(Ljava/util/List;)V
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

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->endStream(Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->this$2:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;

    iget-object p1, p1, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->this$2:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;

    iget-object p1, p1, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->releaseAndReuse()V

    :cond_0
    return-void
.end method

.method public requestOutput()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->requestOutput()V

    return-void
.end method

.method public bridge synthetic write(Ljava/nio/Buffer;)I
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
