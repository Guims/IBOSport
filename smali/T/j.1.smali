.class public final LT/j;
.super LX4/c;


# instance fields
.field public b:Ljava/lang/Object;

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;

.field public s:Le5/m;

.field public t:LT/I;

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:LT/k;

.field public w:I


# direct methods
.method public constructor <init>(LT/k;LX4/c;)V
    .locals 0

    iput-object p1, p0, LT/j;->v:LT/k;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LT/j;->u:Ljava/lang/Object;

    iget p1, p0, LT/j;->w:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/j;->w:I

    iget-object p1, p0, LT/j;->v:LT/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LT/k;->a(LT/g;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
