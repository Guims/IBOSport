.class public final enum Lio/realm/D;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:Lio/realm/D;

.field public static final enum q:Lio/realm/D;

.field public static final synthetic r:[Lio/realm/D;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/realm/D;

    const-string v1, "TYPED_REALM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/D;->b:Lio/realm/D;

    new-instance v1, Lio/realm/D;

    const-string v2, "DYNAMIC_REALM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/realm/D;->q:Lio/realm/D;

    filled-new-array {v0, v1}, [Lio/realm/D;

    move-result-object v0

    sput-object v0, Lio/realm/D;->r:[Lio/realm/D;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/D;
    .locals 1

    const-class v0, Lio/realm/D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/D;

    return-object p0
.end method

.method public static values()[Lio/realm/D;
    .locals 1

    sget-object v0, Lio/realm/D;->r:[Lio/realm/D;

    invoke-virtual {v0}, [Lio/realm/D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/D;

    return-object v0
.end method
