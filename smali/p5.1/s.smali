.class public final Lp5/s;
.super LX4/c;


# instance fields
.field public b:Lp5/t;

.field public q:Lp5/c;

.field public r:Lp5/v;

.field public s:Lm5/Q;

.field public t:Ljava/lang/Object;

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Lp5/t;

.field public w:I


# direct methods
.method public constructor <init>(Lp5/t;LX4/c;)V
    .locals 0

    iput-object p1, p0, Lp5/s;->v:Lp5/t;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp5/s;->u:Ljava/lang/Object;

    iget p1, p0, Lp5/s;->w:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp5/s;->w:I

    iget-object p1, p0, Lp5/s;->v:Lp5/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lp5/t;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    sget-object p1, LW4/a;->b:LW4/a;

    return-object p1
.end method
