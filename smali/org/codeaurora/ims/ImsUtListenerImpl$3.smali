.class Lorg/codeaurora/ims/ImsUtListenerImpl$3;
.super Ljava/lang/Object;
.source "ImsUtListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

.field final synthetic val$id:I

.field final synthetic val$ssInfo:Landroid/os/Bundle;

.field final synthetic val$ut:Lcom/android/ims/internal/IImsUt;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtListenerImpl;Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsUtListenerImpl;
    .param p2, "val$ut"    # Lcom/android/ims/internal/IImsUt;
    .param p3, "val$id"    # I
    .param p4, "val$ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$3;->this$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$3;->val$ut:Lcom/android/ims/internal/IImsUt;

    iput p3, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$3;->val$id:I

    iput-object p4, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$3;->val$ssInfo:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$3;->this$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$3;->val$ut:Lcom/android/ims/internal/IImsUt;

    iget v3, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$3;->val$id:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$3;->val$ssInfo:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Landroid/telephony/ims/ImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$3;->this$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    const-string/jumbo v2, "utConfigurationQueried()"

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtListenerImpl;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method