.class public final Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;
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

.field private requestParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private responseWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private scheme:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;
    .locals 8

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->scheme:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->incomingContentLengthStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->outgoingContentLengthStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->requestParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->responseWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;)V

    return-object v0
.end method

.method public charCodingConfig(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-object p0
.end method

.method public http1Config(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    return-object p0
.end method

.method public incomingContentLengthStrategy(Lorg/apache/hc/core5/http/ContentLengthStrategy;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->incomingContentLengthStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    return-object p0
.end method

.method public outgoingContentLengthStrategy(Lorg/apache/hc/core5/http/ContentLengthStrategy;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->outgoingContentLengthStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    return-object p0
.end method

.method public requestParserFactory(Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->requestParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;

    return-object p0
.end method

.method public responseWriterFactory(Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->responseWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;

    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;->scheme:Ljava/lang/String;

    return-object p0
.end method
