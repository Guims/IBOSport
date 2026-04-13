.class public final LT/A;
.super LX4/c;


# instance fields
.field public b:LT/I;

.field public q:LT/T;

.field public r:Z

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:LT/I;

.field public u:I


# direct methods
.method public constructor <init>(LT/I;LV4/d;)V
    .locals 0

    iput-object p1, p0, LT/A;->t:LT/I;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LT/A;->s:Ljava/lang/Object;

    iget p1, p0, LT/A;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/A;->u:I

    iget-object p1, p0, LT/A;->t:LT/I;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, LT/I;->e(LT/I;ZLV4/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
