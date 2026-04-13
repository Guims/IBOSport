.class public Lorg/apache/hc/client5/http/impl/io/LenientHttpResponseParser;
.super Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;


# static fields
.field private static final LOG:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/io/LenientHttpResponseParser;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/LenientHttpResponseParser;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/apache/hc/client5/http/impl/io/LenientHttpResponseParser;-><init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/HttpResponseFactory;Lorg/apache/hc/core5/http/config/Http1Config;)V

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

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;-><init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/HttpResponseFactory;Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-void
.end method


# virtual methods
.method public createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;->createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object v0, Lorg/apache/hc/client5/http/impl/io/LenientHttpResponseParser;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/LenientHttpResponseParser;->LOG:LO5/a;

    const-string v1, "Garbage in response: {}"

    invoke-interface {v0, p1, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/io/LenientHttpResponseParser;->createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    return-object p1
.end method
