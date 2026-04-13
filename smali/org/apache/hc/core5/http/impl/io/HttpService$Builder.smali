.class public final Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/io/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private processor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private requestHandler:Lorg/apache/hc/core5/http/io/HttpServerRequestHandler;

.field private streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/impl/io/HttpService$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/core5/http/impl/io/HttpService;
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/HttpService;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;->processor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;->requestHandler:Lorg/apache/hc/core5/http/io/HttpServerRequestHandler;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;->connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/hc/core5/http/impl/io/HttpService;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/io/HttpServerRequestHandler;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    return-object v0
.end method

.method public withConnectionReuseStrategy(Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;->connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    return-object p0
.end method

.method public withHttp1StreamListener(Lorg/apache/hc/core5/http/impl/Http1StreamListener;)Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    return-object p0
.end method

.method public withHttpProcessor(Lorg/apache/hc/core5/http/protocol/HttpProcessor;)Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;->processor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public withHttpServerRequestHandler(Lorg/apache/hc/core5/http/io/HttpServerRequestHandler;)Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/HttpService$Builder;->requestHandler:Lorg/apache/hc/core5/http/io/HttpServerRequestHandler;

    return-object p0
.end method
