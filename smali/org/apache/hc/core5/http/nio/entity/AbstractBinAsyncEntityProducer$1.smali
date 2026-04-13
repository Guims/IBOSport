.class Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/StreamChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/StreamChannel<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;

.field final synthetic val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endStream()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;->access$000(Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-virtual {v1, v2}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;->streamEnd(Lorg/apache/hc/core5/http/nio/StreamChannel;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic write(Ljava/nio/Buffer;)I
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer$1;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3

    const-string v0, "Buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;->access$000(Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-virtual {v1, v2, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityProducer;->writeData(Lorg/apache/hc/core5/http/nio/StreamChannel;Ljava/nio/ByteBuffer;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
