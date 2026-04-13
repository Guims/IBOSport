.class public Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
        "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;


# instance fields
.field private final lineParser:Lorg/apache/hc/core5/http/message/LineParser;

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
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;-><init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/HttpResponseFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/HttpResponseFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/message/LineParser;",
            "Lorg/apache/hc/core5/http/HttpResponseFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/message/LazyLaxLineParser;->INSTANCE:Lorg/apache/hc/core5/http/message/LazyLaxLineParser;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;->lineParser:Lorg/apache/hc/core5/http/message/LineParser;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/hc/core5/http/impl/io/DefaultClassicHttpResponseFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultClassicHttpResponseFactory;

    :goto_1
    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;->responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/core5/http/io/HttpMessageParser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            ")",
            "Lorg/apache/hc/core5/http/io/HttpMessageParser<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;->lineParser:Lorg/apache/hc/core5/http/message/LineParser;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;->responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParser;-><init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/HttpResponseFactory;Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-object v0
.end method
