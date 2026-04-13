.class final Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;
.super Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->withTrailers(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$trailers:[Lorg/apache/hc/core5/http/Header;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)V
    .locals 0

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;->val$trailers:[Lorg/apache/hc/core5/http/Header;

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducerWrapper;-><init>(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTrailerNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;->val$trailers:[Lorg/apache/hc/core5/http/Header;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3$1;-><init>(Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    invoke-super {p0, v0}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducerWrapper;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method
