.class final enum Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestServiceStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

.field public static final enum ALL:Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

.field public static final enum FIRST_SUCCESSFUL:Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    const-string v1, "FIRST_SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;->FIRST_SUCCESSFUL:Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    new-instance v1, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    const-string v2, "ALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;->ALL:Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    filled-new-array {v0, v1}, [Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;->$VALUES:[Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;->$VALUES:[Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    return-object v0
.end method
