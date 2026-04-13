.class Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

.field final synthetic val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endStream()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->access$000(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->access$000(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->access$100(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}: end of request data"

    invoke-interface {v0, v1, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

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

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->access$000(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->access$000(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->access$100(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}: end of request data"

    invoke-interface {v0, v1, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->endStream(Ljava/util/List;)V

    return-void
.end method

.method public requestOutput()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->requestOutput()V

    return-void
.end method

.method public bridge synthetic write(Ljava/nio/Buffer;)I
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->access$000(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->access$000(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->this$0:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->access$100(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "{}: produce request data, len {} bytes"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
