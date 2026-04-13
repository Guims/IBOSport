.class Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;

.field final synthetic val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endStream()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

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

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;

    iget-object p1, p1, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;->val$trailers:[Lorg/apache/hc/core5/http/Header;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;

    iget-object p1, p1, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;->val$trailers:[Lorg/apache/hc/core5/http/Header;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->endStream(Ljava/util/List;)V

    return-void
.end method

.method public requestOutput()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->requestOutput()V

    return-void
.end method

.method public bridge synthetic write(Ljava/nio/Buffer;)I
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
