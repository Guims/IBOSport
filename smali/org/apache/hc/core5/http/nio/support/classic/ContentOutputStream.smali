.class public Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private final buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-string v0, "Output buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;->writeCompleted()V

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputStream;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;->write([BII)V

    return-void
.end method
