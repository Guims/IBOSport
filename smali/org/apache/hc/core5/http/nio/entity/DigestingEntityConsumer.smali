.class public Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile digest:[B

.field private final digester:Ljava/security/MessageDigest;

.field private final trailers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapped:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Entity consumer"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->wrapped:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->trailers:Ljava/util/List;

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->digester:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->wrapped:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->wrapped:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->wrapped:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->digest:[B

    return-object v0
.end method

.method public getTrailers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->trailers:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->trailers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->wrapped:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void
.end method

.method public streamEnd(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->trailers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->digest:[B

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->wrapped:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void
.end method

.method public streamStart(Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/EntityDetails;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->wrapped:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;->streamStart(Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityConsumer;->wrapped:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
