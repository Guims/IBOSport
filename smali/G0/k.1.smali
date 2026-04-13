.class public final LG0/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LG0/z;

.field public c:LG0/r;

.field public d:LG0/s;

.field public final e:Lp3/Y;

.field public f:Lk0/d;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LG0/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LG0/k;->a:Landroid/content/Context;

    iput-object p2, p0, LG0/k;->b:LG0/z;

    sget-object p1, Lp3/H;->q:Lp3/F;

    sget-object p1, Lp3/Y;->t:Lp3/Y;

    iput-object p1, p0, LG0/k;->e:Lp3/Y;

    sget-object p1, Lk0/d;->a:Lk0/w;

    iput-object p1, p0, LG0/k;->f:Lk0/d;

    return-void
.end method
