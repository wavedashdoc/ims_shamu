.class Lorg/codeaurora/ims/ImsUtListenerImpl$5;
.super Ljava/lang/Object;
.source "ImsUtListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

.field final synthetic val$cbInfo:[Landroid/telephony/ims/ImsSsInfo;

.field final synthetic val$id:I

.field final synthetic val$ut:Lcom/android/ims/internal/IImsUt;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtListenerImpl;Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsUtListenerImpl;
    .param p2, "val$ut"    # Lcom/android/ims/internal/IImsUt;
    .param p3, "val$id"    # I
    .param p4, "val$cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$5;->this$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$5;->val$ut:Lcom/android/ims/internal/IImsUt;

    iput p3, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$5;->val$id:I

    iput-object p4, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$5;->val$cbInfo:[Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$5;->this$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$5;->val$ut:Lcom/android/ims/internal/IImsUt;

    iget v3, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$5;->val$id:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$5;->val$cbInfo:[Landroid/telephony/ims/ImsSsInfo;

    invoke-interface {v1, v2, v3, v4}, Landroid/telephony/ims/ImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerImpl$5;->this$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    const-string/jumbo v2, "utConfigurationCallBarringQueried()"

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtListenerImpl;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method