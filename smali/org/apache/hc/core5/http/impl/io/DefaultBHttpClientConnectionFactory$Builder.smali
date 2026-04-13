.class public final Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private incomingContentLengthStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private outgoingContentLengthStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private requestWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

.field private responseParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;
    .locals 9

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->incomingContentLengthStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->outgoingContentLengthStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->requestWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->responseParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$1;)V

    return-object v0
.end method

.method public charCodingConfig(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-object p0
.end method

.method public http1Config(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    return-object p0
.end method

.method public incomingContentLengthStrategy(Lorg/apache/hc/core5/http/ContentLengthStrategy;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->incomingContentLengthStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    return-object p0
.end method

.method public outgoingContentLengthStrategy(Lorg/apache/hc/core5/http/ContentLengthStrategy;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->outgoingContentLengthStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    return-object p0
.end method

.method public requestWriterFactory(Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->requestWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;

    return-object p0
.end method

.method public responseOutOfOrderStrategy(Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

    return-object p0
.end method

.method public responseParserFactory(Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;->responseParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;

    return-object p0
.end method
