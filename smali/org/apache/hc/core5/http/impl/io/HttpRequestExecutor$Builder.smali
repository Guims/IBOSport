.class public final Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

.field private waitForContinue:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;
    .locals 4

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;->waitForContinue:Lorg/apache/hc/core5/util/Timeout;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;->connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;-><init>(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    return-object v0
.end method

.method public withConnectionReuseStrategy(Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;->connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    return-object p0
.end method

.method public withHttp1StreamListener(Lorg/apache/hc/core5/http/impl/Http1StreamListener;)Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    return-object p0
.end method

.method public withWaitForContinue(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;->waitForContinue:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method
