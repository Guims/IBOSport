.class final enum Lorg/apache/hc/core5/http/impl/nio/FlushMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/impl/nio/FlushMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/impl/nio/FlushMode;

.field public static final enum BUFFER:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

.field public static final enum IMMEDIATE:Lorg/apache/hc/core5/http/impl/nio/FlushMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/nio/FlushMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->IMMEDIATE:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    const-string v2, "BUFFER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/nio/FlushMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->BUFFER:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    filled-new-array {v0, v1}, [Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/FlushMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/impl/nio/FlushMode;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/impl/nio/FlushMode;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/impl/nio/FlushMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    return-object v0
.end method
