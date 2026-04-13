.class public Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;
.super Lorg/apache/hc/core5/http/impl/io/AbstractMessageParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/impl/io/AbstractMessageParser<",
        "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/HttpResponseFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;-><init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/HttpResponseFactory;Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/HttpResponseFactory;Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/message/LineParser;",
            "Lorg/apache/hc/core5/http/HttpResponseFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lorg/apache/hc/core5/http/impl/io/AbstractMessageParser;-><init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/config/Http1Config;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/http/impl/io/DefaultClassicHttpResponseFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultClassicHttpResponseFactory;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;->responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;

    return-void
.end method


# virtual methods
.method public createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/AbstractMessageParser;->getLineParser()Lorg/apache/hc/core5/http/message/LineParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/message/LineParser;->parseStatusLine(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/message/StatusLine;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;->responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/message/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/message/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/hc/core5/http/HttpResponseFactory;->newHttpResponse(ILjava/lang/String;)Lorg/apache/hc/core5/http/HttpResponse;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/message/StatusLine;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpMessage;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    return-object v0
.end method

.method public bridge synthetic createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;->createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    return-object p1
.end method
