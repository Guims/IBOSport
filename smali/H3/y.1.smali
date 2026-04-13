.class public final LH3/y;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/y;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/y;->a:LH3/y;

    const-string v0, "platform"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/y;->b:LR3/c;

    const-string v0, "version"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/y;->c:LR3/c;

    const-string v0, "buildVersion"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/y;->d:LR3/c;

    const-string v0, "jailbroken"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/y;->e:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LH3/L0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/j0;

    iget v0, p1, LH3/j0;->a:I

    sget-object v1, LH3/y;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/y;->c:LR3/c;

    iget-object v1, p1, LH3/j0;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/y;->d:LR3/c;

    iget-object v1, p1, LH3/j0;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/y;->e:LR3/c;

    iget-boolean p1, p1, LH3/j0;->d:Z

    invoke-interface {p2, v0, p1}, LR3/e;->b(LR3/c;Z)LR3/e;

    return-void
.end method
