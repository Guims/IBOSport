.class public final enum Lorg/apache/hc/core5/pool/PoolReusePolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/pool/PoolReusePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/pool/PoolReusePolicy;

.field public static final enum FIFO:Lorg/apache/hc/core5/pool/PoolReusePolicy;

.field public static final enum LIFO:Lorg/apache/hc/core5/pool/PoolReusePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/hc/core5/pool/PoolReusePolicy;

    const-string v1, "LIFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/pool/PoolReusePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/pool/PoolReusePolicy;->LIFO:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    new-instance v1, Lorg/apache/hc/core5/pool/PoolReusePolicy;

    const-string v2, "FIFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/pool/PoolReusePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/pool/PoolReusePolicy;->FIFO:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    filled-new-array {v0, v1}, [Lorg/apache/hc/core5/pool/PoolReusePolicy;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/pool/PoolReusePolicy;->$VALUES:[Lorg/apache/hc/core5/pool/PoolReusePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/pool/PoolReusePolicy;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/pool/PoolReusePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/pool/PoolReusePolicy;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/pool/PoolReusePolicy;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/pool/PoolReusePolicy;->$VALUES:[Lorg/apache/hc/core5/pool/PoolReusePolicy;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/pool/PoolReusePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/pool/PoolReusePolicy;

    return-object v0
.end method
