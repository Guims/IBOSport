.class public final enum Lt3/p;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum b:Lt3/p;

.field public static final synthetic q:[Lt3/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt3/p;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt3/p;->b:Lt3/p;

    filled-new-array {v0}, [Lt3/p;

    move-result-object v0

    sput-object v0, Lt3/p;->q:[Lt3/p;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt3/p;
    .locals 1

    const-class v0, Lt3/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt3/p;

    return-object p0
.end method

.method public static values()[Lt3/p;
    .locals 1

    sget-object v0, Lt3/p;->q:[Lt3/p;

    invoke-virtual {v0}, [Lt3/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt3/p;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
