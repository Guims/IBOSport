.class public Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;
.super Lorg/apache/hc/core5/http/io/entity/AbstractHttpEntity;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final b:[B

.field private final len:I

.field private final off:I


# direct methods
.method public constructor <init>([BIILorg/apache/hc/core5/http/ContentType;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;-><init>([BIILorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([BIILorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;-><init>([BIILorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([BIILorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0, p4, p5, p6}, Lorg/apache/hc/core5/http/io/entity/AbstractHttpEntity;-><init>(Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    const-string p4, "Source byte array"

    invoke-static {p1, p4}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p4, "offset"

    invoke-static {p2, p4}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    const-string p4, "length"

    invoke-static {p3, p4}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    add-int p4, p2, p3

    const-string p5, "off + len"

    invoke-static {p4, p5}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    array-length p5, p1

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-gt p2, p5, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    move p5, p6

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "off %s cannot be greater then b.length %s "

    invoke-static {p5, v2, v1}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    array-length p5, p1

    if-gt p4, p5, :cond_1

    move p6, v0

    :cond_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    array-length p5, p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p4, p5}, [Ljava/lang/Object;

    move-result-object p4

    const-string p5, "off + len  %s cannot be less then b.length %s "

    invoke-static {p6, p5, p4}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->b:[B

    iput p2, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->off:I

    iput p3, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->len:I

    return-void
.end method

.method public constructor <init>([BIILorg/apache/hc/core5/http/ContentType;Z)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;-><init>([BIILorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([BLorg/apache/hc/core5/http/ContentType;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;-><init>([BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;-><init>([BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/hc/core5/http/io/entity/AbstractHttpEntity;-><init>(Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    const-string p2, "Source byte array"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->b:[B

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->off:I

    array-length p1, p1

    iput p1, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->len:I

    return-void
.end method

.method public constructor <init>([BLorg/apache/hc/core5/http/ContentType;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;-><init>([BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->b:[B

    iget v2, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->off:I

    iget v3, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    iget v0, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->len:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3

    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->b:[B

    iget v1, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->off:I

    iget v2, p0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
