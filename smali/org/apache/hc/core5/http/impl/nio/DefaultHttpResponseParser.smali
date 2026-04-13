.class public Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParser;
.super Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/hc/core5/http/HttpResponse;",
        ">",
        "Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/HttpResponseFactory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponseFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpResponseFactory<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParser;-><init>(Lorg/apache/hc/core5/http/HttpResponseFactory;Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponseFactory;Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpResponseFactory<",
            "TT;>;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParser;-><init>(Lorg/apache/hc/core5/http/HttpResponseFactory;Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponseFactory;Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpResponseFactory<",
            "TT;>;",
            "Lorg/apache/hc/core5/http/message/LineParser;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;-><init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/config/Http1Config;)V

    const-string p2, "Response factory"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpResponseFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParser;->responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParser;->createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/util/CharArrayBuffer;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->getLineParser()Lorg/apache/hc/core5/http/message/LineParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/message/LineParser;->parseStatusLine(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/message/StatusLine;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParser;->responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/message/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/message/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/hc/core5/http/HttpResponseFactory;->newHttpResponse(ILjava/lang/String;)Lorg/apache/hc/core5/http/HttpResponse;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/message/StatusLine;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpMessage;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    return-object v0
.end method
