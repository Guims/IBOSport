.class Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity$1;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;->getContent()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity$1;->this$0:Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity$1;->this$0:Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;->access$000(Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity$1;->this$0:Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;->access$000(Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity$1;->this$0:Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;->access$000(Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity$1;->this$0:Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;->access$000(Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity$1;->this$0:Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;->access$000(Lorg/apache/hc/core5/http/io/entity/ByteBufferEntity;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method
