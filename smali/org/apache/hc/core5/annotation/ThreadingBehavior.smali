.class public final enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/annotation/ThreadingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/annotation/ThreadingBehavior;

.field public static final enum IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

.field public static final enum IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

.field public static final enum SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

.field public static final enum SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

.field public static final enum STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

.field public static final enum UNSAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    const-string v1, "IMMUTABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    new-instance v1, Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    const-string v2, "IMMUTABLE_CONDITIONAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    new-instance v2, Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    const-string v3, "STATELESS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    new-instance v3, Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    const-string v4, "SAFE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/core5/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    new-instance v4, Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    const-string v5, "SAFE_CONDITIONAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/hc/core5/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    new-instance v5, Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    const-string v6, "UNSAFE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/hc/core5/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/hc/core5/annotation/ThreadingBehavior;->UNSAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/annotation/ThreadingBehavior;->$VALUES:[Lorg/apache/hc/core5/annotation/ThreadingBehavior;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/annotation/ThreadingBehavior;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/annotation/ThreadingBehavior;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/annotation/ThreadingBehavior;->$VALUES:[Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/annotation/ThreadingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/annotation/ThreadingBehavior;

    return-object v0
.end method
