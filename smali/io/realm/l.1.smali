.class public final enum Lio/realm/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:Lio/realm/l;

.field public static final synthetic q:[Lio/realm/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/realm/l;

    const-string v1, "CHECK_SAME_VALUES_BEFORE_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/l;->b:Lio/realm/l;

    filled-new-array {v0}, [Lio/realm/l;

    move-result-object v0

    sput-object v0, Lio/realm/l;->q:[Lio/realm/l;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/l;
    .locals 1

    const-class v0, Lio/realm/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/l;

    return-object p0
.end method

.method public static values()[Lio/realm/l;
    .locals 1

    sget-object v0, Lio/realm/l;->q:[Lio/realm/l;

    invoke-virtual {v0}, [Lio/realm/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/l;

    return-object v0
.end method
