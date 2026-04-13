.class public Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriter;
.super Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter<",
        "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriter;-><init>(Lorg/apache/hc/core5/http/message/LineFormatter;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/message/LineFormatter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;-><init>(Lorg/apache/hc/core5/http/message/LineFormatter;)V

    return-void
.end method


# virtual methods
.method public writeHeadLine(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/util/CharArrayBuffer;)V
    .locals 4

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/AbstractMessageWriter;->getLineFormatter()Lorg/apache/hc/core5/http/message/LineFormatter;

    move-result-object v1

    new-instance v2, Lorg/apache/hc/core5/http/message/RequestLine;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getRequestUri()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    :goto_0
    invoke-direct {v2, v3, p1, v0}, Lorg/apache/hc/core5/http/message/RequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/http/ProtocolVersion;)V

    invoke-interface {v1, p2, v2}, Lorg/apache/hc/core5/http/message/LineFormatter;->formatRequestLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/message/RequestLine;)V

    return-void
.end method

.method public bridge synthetic writeHeadLine(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/util/CharArrayBuffer;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriter;->writeHeadLine(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/util/CharArrayBuffer;)V

    return-void
.end method
