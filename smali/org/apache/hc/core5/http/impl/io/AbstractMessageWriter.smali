.class public abstract Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpMessageWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/hc/core5/http/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/io/HttpMessageWriter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

.field private final lineFormatter:Lorg/apache/hc/core5/http/message/LineFormatter;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/message/LineFormatter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicLineFormatter;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/apache/hc/core5/http/message/LineFormatter;

    new-instance p1, Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    return-void
.end method


# virtual methods
.method public getLineFormatter()Lorg/apache/hc/core5/http/message/LineFormatter;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/apache/hc/core5/http/message/LineFormatter;

    return-object v0
.end method

.method public write(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/http/io/SessionOutputBuffer;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    const-string v0, "HTTP message"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Session output buffer"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Output stream"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->writeHeadLine(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/util/CharArrayBuffer;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-interface {p2, v0, p3}, Lorg/apache/hc/core5/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/io/OutputStream;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/Header;

    instance-of v1, v0, Lorg/apache/hc/core5/http/FormattedHeader;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/hc/core5/http/FormattedHeader;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/FormattedHeader;->getBuffer()Lorg/apache/hc/core5/util/CharArrayBuffer;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lorg/apache/hc/core5/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->clear()V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/apache/hc/core5/http/message/LineFormatter;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-interface {v1, v2, v0}, Lorg/apache/hc/core5/http/message/LineFormatter;->formatHeader(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/Header;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-interface {p2, v0, p3}, Lorg/apache/hc/core5/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->clear()V

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-interface {p2, p1, p3}, Lorg/apache/hc/core5/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method public bridge synthetic write(Lorg/apache/hc/core5/http/MessageHeaders;Lorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpMessage;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->write(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method public abstract writeHeadLine(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/util/CharArrayBuffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/util/CharArrayBuffer;",
            ")V"
        }
    .end annotation
.end method
