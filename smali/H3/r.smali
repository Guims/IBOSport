.class public final LH3/r;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/r;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/r;->a:LH3/r;

    const-string v0, "processName"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/r;->b:LR3/c;

    const-string v0, "pid"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/r;->c:LR3/c;

    const-string v0, "importance"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/r;->d:LR3/c;

    const-string v0, "defaultProcess"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/r;->e:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LH3/D0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/a0;

    iget-object v0, p1, LH3/a0;->a:Ljava/lang/String;

    sget-object v1, LH3/r;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/r;->c:LR3/c;

    iget v1, p1, LH3/a0;->b:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/r;->d:LR3/c;

    iget v1, p1, LH3/a0;->c:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/r;->e:LR3/c;

    iget-boolean p1, p1, LH3/a0;->d:Z

    invoke-interface {p2, v0, p1}, LR3/e;->b(LR3/c;Z)LR3/e;

    return-void
.end method
