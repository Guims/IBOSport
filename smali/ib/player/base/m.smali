.class public final enum Lib/player/base/m;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final enum b:Lib/player/base/m;

.field public static final enum q:Lib/player/base/m;

.field public static final enum r:Lib/player/base/m;

.field public static final synthetic s:[Lib/player/base/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lib/player/base/m;

    const-string v1, "LIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lib/player/base/m;->b:Lib/player/base/m;

    new-instance v1, Lib/player/base/m;

    const-string v2, "VOD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lib/player/base/m;->q:Lib/player/base/m;

    new-instance v2, Lib/player/base/m;

    const-string v3, "SERIES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lib/player/base/m;->r:Lib/player/base/m;

    filled-new-array {v0, v1, v2}, [Lib/player/base/m;

    move-result-object v0

    sput-object v0, Lib/player/base/m;->s:[Lib/player/base/m;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lib/player/base/m;
    .locals 1

    const-class v0, Lib/player/base/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lib/player/base/m;

    return-object p0
.end method

.method public static values()[Lib/player/base/m;
    .locals 1

    sget-object v0, Lib/player/base/m;->s:[Lib/player/base/m;

    invoke-virtual {v0}, [Lib/player/base/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lib/player/base/m;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "Series"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v0

    :cond_1
    const-string v0, "VOD"

    return-object v0

    :cond_2
    const-string v0, "Live"

    return-object v0
.end method
