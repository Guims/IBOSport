.class public Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
.super Ljava/lang/Object;


# instance fields
.field private requestChainBuilder:Lorg/apache/hc/core5/http/protocol/ChainBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/protocol/ChainBuilder<",
            "Lorg/apache/hc/core5/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseChainBuilder:Lorg/apache/hc/core5/http/protocol/ChainBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/protocol/ChainBuilder<",
            "Lorg/apache/hc/core5/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;-><init>()V

    return-object v0
.end method

.method private getRequestChainBuilder()Lorg/apache/hc/core5/http/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/protocol/ChainBuilder<",
            "Lorg/apache/hc/core5/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->requestChainBuilder:Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->requestChainBuilder:Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->requestChainBuilder:Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    return-object v0
.end method

.method private getResponseChainBuilder()Lorg/apache/hc/core5/http/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/protocol/ChainBuilder<",
            "Lorg/apache/hc/core5/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->responseChainBuilder:Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->responseChainBuilder:Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->responseChainBuilder:Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAll([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addAllLast([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAll([Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addAllLast([Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAllFirst([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;->addAllFirst([Ljava/lang/Object;)Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    return-object p0
.end method

.method public varargs addAllFirst([Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;->addAllFirst([Ljava/lang/Object;)Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    return-object p0
.end method

.method public varargs addAllLast([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;->addAllLast([Ljava/lang/Object;)Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    return-object p0
.end method

.method public varargs addAllLast([Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;->addAllLast([Ljava/lang/Object;)Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    return-object p0
.end method

.method public addFirst(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    return-object p0
.end method

.method public addFirst(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    return-object p0
.end method

.method public addLast(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    return-object p0
.end method

.method public addLast(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    return-object p0
.end method

.method public build()Lorg/apache/hc/core5/http/protocol/HttpProcessor;
    .locals 4

    new-instance v0, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;

    iget-object v1, p0, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->requestChainBuilder:Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;->build()Ljava/util/LinkedList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->responseChainBuilder:Lorg/apache/hc/core5/http/protocol/ChainBuilder;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/protocol/ChainBuilder;->build()Ljava/util/LinkedList;

    move-result-object v2

    :cond_1
    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
