.class public final enum Lp2/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:Lp2/d;

.field public static final enum q:Lp2/d;

.field public static final enum r:Lp2/d;

.field public static final synthetic s:[Lp2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lp2/d;

    const-string v1, "NETWORK_UNMETERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp2/d;->b:Lp2/d;

    new-instance v1, Lp2/d;

    const-string v2, "DEVICE_IDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lp2/d;->q:Lp2/d;

    new-instance v2, Lp2/d;

    const-string v3, "DEVICE_CHARGING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lp2/d;->r:Lp2/d;

    filled-new-array {v0, v1, v2}, [Lp2/d;

    move-result-object v0

    sput-object v0, Lp2/d;->s:[Lp2/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lp2/d;
    .locals 1

    const-class v0, Lp2/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp2/d;

    return-object p0
.end method

.method public static values()[Lp2/d;
    .locals 1

    sget-object v0, Lp2/d;->s:[Lp2/d;

    invoke-virtual {v0}, [Lp2/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp2/d;

    return-object v0
.end method
