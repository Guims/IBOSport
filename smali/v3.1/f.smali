.class public final Lv3/f;
.super Ljava/lang/Object;

# interfaces
.implements Ly3/d;


# static fields
.field public static final q:Lv3/f;

.field public static final r:Lv3/f;

.field public static final s:Lv3/f;

.field public static final t:Lv3/f;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lv3/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv3/f;-><init>(I)V

    sput-object v0, Lv3/f;->q:Lv3/f;

    new-instance v0, Lv3/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv3/f;-><init>(I)V

    sput-object v0, Lv3/f;->r:Lv3/f;

    new-instance v0, Lv3/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lv3/f;-><init>(I)V

    sput-object v0, Lv3/f;->s:Lv3/f;

    new-instance v0, Lv3/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lv3/f;-><init>(I)V

    sput-object v0, Lv3/f;->t:Lv3/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lv3/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(LD5/g;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lv3/f;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ly3/q;

    const-class v1, Lx3/d;

    const-class v2, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, LD5/g;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    invoke-static {p1, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Lm5/K;

    invoke-direct {v0, p1}, Lm5/K;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_0
    new-instance v0, Ly3/q;

    const-class v1, Lx3/b;

    const-class v2, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, LD5/g;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    invoke-static {p1, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Lm5/K;

    invoke-direct {v0, p1}, Lm5/K;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_1
    new-instance v0, Ly3/q;

    const-class v1, Lx3/c;

    const-class v2, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, LD5/g;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    invoke-static {p1, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Lm5/K;

    invoke-direct {v0, p1}, Lm5/K;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_2
    new-instance v0, Ly3/q;

    const-class v1, Lx3/a;

    const-class v2, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, LD5/g;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    invoke-static {p1, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Lm5/K;

    invoke-direct {v0, p1}, Lm5/K;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
