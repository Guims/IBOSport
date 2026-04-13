.class public Lorg/apache/hc/core5/http/nio/support/classic/ContentInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "Input buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;->length()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 4

    const/16 v0, 0x400

    new-array v1, v0, [B

    :goto_0
    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v0}, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;->read([BII)I

    move-result p1

    return p1
.end method
