.class public final LV/g;
.super LX4/c;


# instance fields
.field public b:LV/i;

.field public q:LV/c;

.field public r:Z

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:LV/i;

.field public u:I


# direct methods
.method public constructor <init>(LV/i;LX4/c;)V
    .locals 0

    iput-object p1, p0, LV/g;->t:LV/i;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LV/g;->s:Ljava/lang/Object;

    iget p1, p0, LV/g;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LV/g;->u:I

    iget-object p1, p0, LV/g;->t:LV/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LV/i;->a(LT/q;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
