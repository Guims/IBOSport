.class synthetic Lorg/apache/hc/core5/pool/StrictConnPool$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/pool/StrictConnPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$hc$core5$pool$PoolReusePolicy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/apache/hc/core5/pool/PoolReusePolicy;->values()[Lorg/apache/hc/core5/pool/PoolReusePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/hc/core5/pool/StrictConnPool$2;->$SwitchMap$org$apache$hc$core5$pool$PoolReusePolicy:[I

    :try_start_0
    sget-object v1, Lorg/apache/hc/core5/pool/PoolReusePolicy;->LIFO:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/hc/core5/pool/StrictConnPool$2;->$SwitchMap$org$apache$hc$core5$pool$PoolReusePolicy:[I

    sget-object v1, Lorg/apache/hc/core5/pool/PoolReusePolicy;->FIFO:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
