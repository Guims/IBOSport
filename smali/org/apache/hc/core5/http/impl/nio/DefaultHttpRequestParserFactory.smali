.class public Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory<",
        "Lorg/apache/hc/core5/http/HttpRequest;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;


# instance fields
.field private final http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private final lineParser:Lorg/apache/hc/core5/http/message/LineParser;

.field private final requestFactory:Lorg/apache/hc/core5/http/HttpRequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/HttpRequestFactory<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/HttpRequestFactory;Lorg/apache/hc/core5/http/message/LineParser;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/HttpRequestFactory;Lorg/apache/hc/core5/http/message/LineParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/HttpRequestFactory<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/message/LineParser;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestFactory;

    :goto_1
    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;->requestFactory:Lorg/apache/hc/core5/http/HttpRequestFactory;

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    sget-object p3, Lorg/apache/hc/core5/http/message/LazyLineParser;->INSTANCE:Lorg/apache/hc/core5/http/message/LazyLineParser;

    :goto_2
    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;->lineParser:Lorg/apache/hc/core5/http/message/LineParser;

    return-void
.end method


# virtual methods
.method public create()Lorg/apache/hc/core5/http/nio/NHttpMessageParser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/nio/NHttpMessageParser<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParser;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;->requestFactory:Lorg/apache/hc/core5/http/HttpRequestFactory;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;->lineParser:Lorg/apache/hc/core5/http/message/LineParser;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParser;-><init>(Lorg/apache/hc/core5/http/HttpRequestFactory;Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-object v0
.end method
