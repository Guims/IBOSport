.class public final LV/h;
.super LX4/c;


# instance fields
.field public b:LV/i;

.field public q:Ljava/lang/Object;

.field public r:LK5/x;

.field public s:Ljava/lang/Object;

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:LV/i;

.field public v:I


# direct methods
.method public constructor <init>(LV/i;LX4/c;)V
    .locals 0

    iput-object p1, p0, LV/h;->u:LV/i;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LV/h;->t:Ljava/lang/Object;

    iget p1, p0, LV/h;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LV/h;->v:I

    iget-object p1, p0, LV/h;->u:LV/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LV/i;->b(LT/H;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
