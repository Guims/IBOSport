.class public abstract Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;


# static fields
.field private static final EMPTY:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;->EMPTY:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract capacityIncrement()I
.end method

.method public abstract completed()V
.end method

.method public final consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;->data(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public abstract data(Ljava/nio/ByteBuffer;Z)V
.end method

.method public final streamEnd(Ljava/util/List;)V
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

    sget-object p1, Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;->EMPTY:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;->data(Ljava/nio/ByteBuffer;Z)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;->completed()V

    return-void
.end method

.method public final updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;->capacityIncrement()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/CapacityChannel;->update(I)V

    return-void
.end method
